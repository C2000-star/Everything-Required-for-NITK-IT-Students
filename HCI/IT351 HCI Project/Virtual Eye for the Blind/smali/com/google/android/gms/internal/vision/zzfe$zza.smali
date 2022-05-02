.class Lcom/google/android/gms/internal/vision/zzfe$zza;
.super Lcom/google/android/gms/internal/vision/zzfe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/vision/zzfe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final buffer:[B

.field private final limit:I

.field private final offset:I

.field private position:I


# direct methods
.method constructor <init>([BII)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/vision/zzfe;-><init>(Lcom/google/android/gms/internal/vision/zzff;)V

    const-string v0, "buffer"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int v0, p2, p3

    .line 4
    array-length v1, p1

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->offset:I

    .line 10
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 11
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length p1, p1

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public flush()V
    .locals 0

    return-void
.end method

.method public final write([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget p1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 143
    new-instance p2, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zze(J)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/vision/zzeo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zza(Lcom/google/android/gms/internal/vision/zzeo;)V

    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/vision/zzhf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 48
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzb(Lcom/google/android/gms/internal/vision/zzhf;)V

    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhw;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 50
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 51
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/vision/zzec;

    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzec;->zzcf()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 54
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/vision/zzhw;->zzp(Ljava/lang/Object;)I

    move-result v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/vision/zzec;->zzy(I)V

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->zzss:Lcom/google/android/gms/internal/vision/zzfg;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzm(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/vision/zzeo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/vision/zzeo;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    .line 42
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/vision/zzeo;->zza(Lcom/google/android/gms/internal/vision/zzen;)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/vision/zzhf;Lcom/google/android/gms/internal/vision/zzhw;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/vision/zzec;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/vision/zzec;->zzcf()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 76
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/vision/zzhw;->zzp(Ljava/lang/Object;)I

    move-result v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vision/zzec;->zzy(I)V

    .line 79
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->zzss:Lcom/google/android/gms/internal/vision/zzfg;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/vision/zzhw;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/vision/zzjj;)V

    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfe;->write([BII)V

    return-void
.end method

.method public final zzar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zze(J)V

    return-void
.end method

.method public final zzas(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfe;->zzeb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzdz()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zziu;->zza([BJB)V

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zziu;->zza([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    :catch_0
    move-exception p1

    .line 103
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 104
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzau(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 106
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 107
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 108
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    shr-int/lit8 p1, p1, 0x18

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 111
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 112
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzb(ILcom/google/android/gms/internal/vision/zzeo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    const/4 v2, 0x2

    .line 66
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(II)V

    .line 67
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zza(ILcom/google/android/gms/internal/vision/zzeo;)V

    const/4 p1, 0x4

    .line 68
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/vision/zzhf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 60
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    const/4 v2, 0x2

    .line 61
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzf(II)V

    .line 62
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zza(ILcom/google/android/gms/internal/vision/zzhf;)V

    const/4 p1, 0x4

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    return-void
.end method

.method public final zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    int-to-byte p1, p2

    .line 33
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzc(B)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/vision/zzhf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-interface {p1}, Lcom/google/android/gms/internal/vision/zzhf;->zzeq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    .line 71
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/vision/zzhf;->zzb(Lcom/google/android/gms/internal/vision/zzfe;)V

    return-void
.end method

.method public final zzc(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 30
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zzg(J)V

    return-void
.end method

.method public final zzd(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    return-void
.end method

.method public final zzdz()I
    .locals 2

    .line 170
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zze(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzar(I)V

    return-void
.end method

.method public final zze(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzfe;->zzeb()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzdz()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/vision/zziu;->zza([BJB)V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/vision/zziu;->zza([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v6, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 125
    new-instance p2, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzec()I
    .locals 2

    .line 171
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->offset:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final zzf(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    return-void
.end method

.method public final zzf([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/vision/zzfe;->write([BII)V

    return-void
.end method

.method public final zzg(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 128
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 129
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 130
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 131
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 132
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 133
    iput v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 134
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 137
    new-instance p2, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final zzh(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/vision/zzfe;->zzd(II)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/vision/zzfe;->zzau(I)V

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 148
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 149
    invoke-static {v1}, Lcom/google/android/gms/internal/vision/zzfe$zza;->zzax(I)I

    move-result v1

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/vision/zzfe$zza;->zzax(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 152
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 153
    iget-object v3, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzdz()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/vision/zziw;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 154
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 156
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    .line 157
    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    return-void

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/vision/zziw;->zza(Ljava/lang/CharSequence;)I

    move-result v1

    .line 160
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zzas(I)V

    .line 161
    iget-object v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->buffer:[B

    iget v2, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzfe;->zzdz()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/vision/zziw;->zza(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzja; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 168
    new-instance v0, Lcom/google/android/gms/internal/vision/zzfe$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/vision/zzfe$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v1

    .line 164
    iput v0, p0, Lcom/google/android/gms/internal/vision/zzfe$zza;->position:I

    .line 165
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/vision/zzfe;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/vision/zzja;)V

    return-void
.end method

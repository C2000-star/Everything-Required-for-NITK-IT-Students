.class public Lcom/google/android/gms/vision/CameraSource;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/CameraSource$zzb;,
        Lcom/google/android/gms/vision/CameraSource$zza;,
        Lcom/google/android/gms/vision/CameraSource$zze;,
        Lcom/google/android/gms/vision/CameraSource$zzc;,
        Lcom/google/android/gms/vision/CameraSource$zzd;,
        Lcom/google/android/gms/vision/CameraSource$PictureCallback;,
        Lcom/google/android/gms/vision/CameraSource$ShutterCallback;,
        Lcom/google/android/gms/vision/CameraSource$Builder;
    }
.end annotation


# static fields
.field public static final CAMERA_FACING_BACK:I = 0x0

.field public static final CAMERA_FACING_FRONT:I = 0x1


# instance fields
.field private facing:I

.field private rotation:I

.field private zze:Landroid/content/Context;

.field private final zzf:Ljava/lang/Object;

.field private zzg:Landroid/hardware/Camera;

.field private zzh:Lcom/google/android/gms/common/images/Size;

.field private zzi:F

.field private zzj:I

.field private zzk:I

.field private zzl:Z

.field private zzm:Landroid/graphics/SurfaceTexture;

.field private zzn:Z

.field private zzo:Ljava/lang/Thread;

.field private zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

.field private zzq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/google/android/gms/vision/CameraSource;->facing:I

    const/high16 v1, 0x41f00000    # 30.0f

    .line 65
    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzi:F

    const/16 v1, 0x400

    .line 66
    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzj:I

    const/16 v1, 0x300

    .line 67
    iput v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzk:I

    .line 68
    iput-boolean v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzl:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzq:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/vision/zza;)V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;F)F
    .locals 0

    .line 193
    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzi:F

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    .line 194
    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzj:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zze:Landroid/content/Context;

    return-object p1
.end method

.method private final zza()Landroid/hardware/Camera;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 71
    iget v1, v0, Lcom/google/android/gms/vision/CameraSource;->facing:I

    .line 72
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 73
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    const/4 v6, -0x1

    if-ge v4, v5, :cond_1

    .line 74
    invoke-static {v4, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 75
    iget v5, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_1
    if-eq v4, v6, :cond_14

    .line 82
    invoke-static {v4}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .line 83
    iget v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzj:I

    iget v5, v0, Lcom/google/android/gms/vision/CameraSource;->zzk:I

    .line 84
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    .line 86
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    .line 88
    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v6

    .line 89
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/Camera$Size;

    .line 91
    iget v11, v10, Landroid/hardware/Camera$Size;->width:I

    int-to-float v11, v11

    iget v12, v10, Landroid/hardware/Camera$Size;->height:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    .line 92
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 93
    iget v14, v13, Landroid/hardware/Camera$Size;->width:I

    int-to-float v14, v14

    iget v15, v13, Landroid/hardware/Camera$Size;->height:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float v14, v11, v14

    .line 94
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    const v15, 0x3c23d70a    # 0.01f

    cmpg-float v14, v14, v15

    if-gez v14, :cond_3

    .line 95
    new-instance v11, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-direct {v11, v10, v13}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 99
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    const-string v9, "CameraSource"

    const/4 v10, 0x0

    if-nez v6, :cond_5

    const-string v6, "No preview sizes have a corresponding same-aspect-ratio picture size"

    .line 100
    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 102
    new-instance v11, Lcom/google/android/gms/vision/CameraSource$zze;

    invoke-direct {v11, v7, v10}, Lcom/google/android/gms/vision/CameraSource$zze;-><init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 108
    :cond_5
    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    const v7, 0x7fffffff

    move v11, v3

    move v13, v7

    move-object v12, v10

    :cond_6
    :goto_4
    if-ge v11, v6, :cond_7

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v11, v11, 0x1

    check-cast v14, Lcom/google/android/gms/vision/CameraSource$zze;

    .line 109
    invoke-virtual {v14}, Lcom/google/android/gms/vision/CameraSource$zze;->zzb()Lcom/google/android/gms/common/images/Size;

    move-result-object v15

    .line 111
    invoke-virtual {v15}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v16

    sub-int v16, v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    invoke-virtual {v15}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v15

    sub-int/2addr v15, v5

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v15

    add-int v15, v16, v15

    if-ge v15, v13, :cond_6

    move-object v12, v14

    move v13, v15

    goto :goto_4

    :cond_7
    if-eqz v12, :cond_13

    .line 120
    invoke-virtual {v12}, Lcom/google/android/gms/vision/CameraSource$zze;->zzc()Lcom/google/android/gms/common/images/Size;

    move-result-object v2

    .line 121
    invoke-virtual {v12}, Lcom/google/android/gms/vision/CameraSource$zze;->zzb()Lcom/google/android/gms/common/images/Size;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    .line 122
    iget v5, v0, Lcom/google/android/gms/vision/CameraSource;->zzi:F

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 126
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v6

    .line 127
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v8, v10

    :cond_8
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 128
    aget v13, v11, v3

    sub-int v13, v5, v13

    .line 129
    aget v12, v11, v12

    sub-int v12, v5, v12

    .line 130
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v13, v12

    if-ge v13, v7, :cond_8

    move-object v8, v11

    move v7, v13

    goto :goto_5

    :cond_9
    if-eqz v8, :cond_12

    .line 139
    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    if-eqz v2, :cond_a

    .line 141
    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v2

    invoke-virtual {v5, v6, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 142
    :cond_a
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v2}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result v2

    iget-object v6, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    invoke-virtual {v6}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 143
    aget v2, v8, v3

    aget v6, v8, v12

    invoke-virtual {v5, v2, v6}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    const/16 v2, 0x11

    .line 144
    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 146
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zze:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 148
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_e

    if-eq v2, v12, :cond_d

    const/4 v6, 0x2

    if-eq v2, v6, :cond_c

    const/4 v6, 0x3

    if-eq v2, v6, :cond_b

    const/16 v6, 0x1f

    .line 158
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Bad rotation value: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    const/16 v3, 0x10e

    goto :goto_6

    :cond_c
    const/16 v3, 0xb4

    goto :goto_6

    :cond_d
    const/16 v3, 0x5a

    .line 159
    :cond_e
    :goto_6
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 160
    invoke-static {v4, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 161
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v12, :cond_f

    .line 162
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, v3

    rem-int/lit16 v2, v2, 0x168

    rsub-int v3, v2, 0x168

    .line 163
    rem-int/lit16 v3, v3, 0x168

    goto :goto_7

    .line 164
    :cond_f
    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    move v3, v2

    .line 166
    :goto_7
    div-int/lit8 v4, v2, 0x5a

    iput v4, v0, Lcom/google/android/gms/vision/CameraSource;->rotation:I

    .line 167
    invoke-virtual {v1, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 168
    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 169
    iget-boolean v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzl:Z

    if-eqz v2, :cond_11

    .line 171
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    const-string v3, "continuous-video"

    .line 172
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 173
    invoke-virtual {v5, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_8

    :cond_10
    const-string v2, "Camera auto focus is not supported on this device."

    .line 174
    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_11
    :goto_8
    invoke-virtual {v1, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 176
    new-instance v2, Lcom/google/android/gms/vision/CameraSource$zza;

    invoke-direct {v2, v0, v10}, Lcom/google/android/gms/vision/CameraSource$zza;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/zza;)V

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 177
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 178
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 179
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 180
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    invoke-direct {v0, v2}, Lcom/google/android/gms/vision/CameraSource;->zza(Lcom/google/android/gms/common/images/Size;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-object v1

    .line 138
    :cond_12
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find suitable preview frames per second range."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find suitable preview size."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Could not find requested camera."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/CameraSource$zzb;)Lcom/google/android/gms/vision/CameraSource$zzb;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;)Ljava/lang/Object;
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/vision/CameraSource;Z)Z
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzl:Z

    return p1
.end method

.method private final zza(Lcom/google/android/gms/common/images/Size;)[B
    .locals 4

    const/16 v0, 0x11

    .line 182
    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    .line 183
    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/gms/common/images/Size;->getWidth()I

    move-result p1

    mul-int/2addr v1, p1

    mul-int/2addr v1, v0

    int-to-long v0, v1

    long-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    .line 184
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    add-int/lit8 p1, p1, 0x1

    .line 185
    new-array p1, p1, [B

    .line 186
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzq:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 188
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to create valid buffer for camera source."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    .line 195
    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzk:I

    return p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/vision/CameraSource;)Landroid/hardware/Camera;
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;I)I
    .locals 0

    .line 196
    iput p1, p0, Lcom/google/android/gms/vision/CameraSource;->facing:I

    return p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/vision/CameraSource$zzb;
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/vision/CameraSource;)Ljava/util/Map;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzq:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/vision/CameraSource;)I
    .locals 0

    .line 203
    iget p0, p0, Lcom/google/android/gms/vision/CameraSource;->rotation:I

    return p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/vision/CameraSource;)Lcom/google/android/gms/common/images/Size;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    return-object p0
.end method


# virtual methods
.method public getCameraFacing()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/google/android/gms/vision/CameraSource;->facing:I

    return v0
.end method

.method public getPreviewSize()Lcom/google/android/gms/common/images/Size;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzh:Lcom/google/android/gms/common/images/Size;

    return-object v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/vision/CameraSource;->stop()V

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/vision/CameraSource$zzb;->release()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Lcom/google/android/gms/vision/CameraSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    return-object p0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zza()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    .line 9
    new-instance v1, Landroid/graphics/SurfaceTexture;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzm:Landroid/graphics/SurfaceTexture;

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Z

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 13
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/lang/Thread;

    const-string v3, "gms.vision.CameraSource"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    .line 16
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 17
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    monitor-enter v0

    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 21
    monitor-exit v0

    return-object p0

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/vision/CameraSource;->zza()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    .line 23
    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V

    .line 25
    new-instance p1, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    invoke-direct {p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/lang/Thread;

    .line 26
    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    .line 27
    iget-object p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Z

    .line 29
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stop()V
    .locals 6

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    monitor-enter v0

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzp:Lcom/google/android/gms/vision/CameraSource$zzb;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/vision/CameraSource$zzb;->setActive(Z)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 34
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "CameraSource"

    const-string v3, "Frame processing thread interrupted on release."

    .line 37
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzo:Ljava/lang/Thread;

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 41
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :try_start_3
    iget-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzn:Z

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    goto :goto_1

    .line 44
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    const-string v3, "CameraSource"

    .line 47
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to clear camera preview: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 49
    iput-object v2, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    .line 50
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzq:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 51
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public takePicture(Lcom/google/android/gms/vision/CameraSource$ShutterCallback;Lcom/google/android/gms/vision/CameraSource$PictureCallback;)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource;->zzf:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Lcom/google/android/gms/vision/CameraSource$zzd;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/vision/CameraSource$zzd;-><init>(Lcom/google/android/gms/vision/zza;)V

    .line 57
    invoke-static {v1, p1}, Lcom/google/android/gms/vision/CameraSource$zzd;->zza(Lcom/google/android/gms/vision/CameraSource$zzd;Lcom/google/android/gms/vision/CameraSource$ShutterCallback;)Lcom/google/android/gms/vision/CameraSource$ShutterCallback;

    .line 58
    new-instance p1, Lcom/google/android/gms/vision/CameraSource$zzc;

    invoke-direct {p1, p0, v2}, Lcom/google/android/gms/vision/CameraSource$zzc;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/zza;)V

    .line 59
    invoke-static {p1, p2}, Lcom/google/android/gms/vision/CameraSource$zzc;->zza(Lcom/google/android/gms/vision/CameraSource$zzc;Lcom/google/android/gms/vision/CameraSource$PictureCallback;)Lcom/google/android/gms/vision/CameraSource$PictureCallback;

    .line 60
    iget-object p2, p0, Lcom/google/android/gms/vision/CameraSource;->zzg:Landroid/hardware/Camera;

    invoke-virtual {p2, v1, v2, v2, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 61
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

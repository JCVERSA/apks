.class synthetic Lcom/hunantv/media/player/MgtvMediaPlayer$28;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType:[I

.field static final synthetic $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType:[I

.field static final synthetic $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

.field static final synthetic $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType:[I

.field static final synthetic $SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

.field static final synthetic $SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->values()[Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_AUTOPLAY:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_LOADDATA:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$Prepared4StartMode:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;->MODE_PREPARED4START_LOADDATA_DISAV:Lcom/hunantv/media/player/MgtvMediaPlayer$Prepared4StartMode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    invoke-static {}, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->values()[Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType:[I

    :try_start_4
    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGOFFMPEG:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGOHELP:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGOMEDIAPLAYER:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$NativeSoType:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;->TYPE_NATIVESO_IMGODS:Lcom/hunantv/media/player/MgtvMediaPlayer$NativeSoType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    invoke-static {}, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->values()[Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType:[I

    :try_start_8
    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->OPENGL_ES:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$RenderType:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;->NATIVE_WINDOW:Lcom/hunantv/media/player/MgtvMediaPlayer$RenderType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    invoke-static {}, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->values()[Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

    :try_start_a
    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_NONE:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_NONREF:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

    sget-object v5, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_BIDIR:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v2, v4, v5
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :catch_c
    :try_start_d
    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

    sget-object v4, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_NONKEY:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v2, v4
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$SkipLoopFilterType:[I

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;->TYPE_SKIPLOOPFILTER_ALL:Lcom/hunantv/media/player/MgtvMediaPlayer$SkipLoopFilterType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    invoke-static {}, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->values()[Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType:[I

    :try_start_f
    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_IMGO:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$MgtvMediaPlayer$DataSourceType:[I

    sget-object v3, Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;->TYPE_DATASOUCE_DEFAULT:Lcom/hunantv/media/player/MgtvMediaPlayer$DataSourceType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    invoke-static {}, Lcom/hunantv/media/player/a/a$b;->values()[Lcom/hunantv/media/player/a/a$b;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType:[I

    :try_start_11
    sget-object v3, Lcom/hunantv/media/player/a/a$b;->a:Lcom/hunantv/media/player/a/a$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v1, Lcom/hunantv/media/player/MgtvMediaPlayer$28;->$SwitchMap$com$hunantv$media$player$dns$AsyncDns$DnsType:[I

    sget-object v2, Lcom/hunantv/media/player/a/a$b;->b:Lcom/hunantv/media/player/a/a$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

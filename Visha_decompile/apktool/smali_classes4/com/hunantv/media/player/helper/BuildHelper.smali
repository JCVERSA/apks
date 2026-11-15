.class public Lcom/hunantv/media/player/helper/BuildHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ABI_ARM:Ljava/lang/String; = "armeabi"

.field public static final ABI_ARM64_V8A:Ljava/lang/String; = "arm64-v8a"

.field public static final ABI_ARMv7a:Ljava/lang/String; = "armeabi-v7a"

.field public static final ABI_X86:Ljava/lang/String; = "x86"

.field public static ANDROID_M:I = 0x17

.field public static ANDROID_N:I = 0x18

.field public static ANDROID_N_MR1:I = 0x19

.field public static ANDROID_O:I = 0x1a

.field public static ANDROID_P:I = 0x1c

.field public static ANDROID_Q:I = 0x1d

.field public static ANDROID_UNKNOWN:I = 0x1b

.field public static FROYO:I = 0x8

.field public static GINGERBREAD:I = 0x9

.field public static GINGERBREAD_MR1:I = 0xa

.field public static HONEYCOMB:I = 0xb

.field public static HONEYCOMB_MR1:I = 0xc

.field public static HONEYCOMB_MR2:I = 0xd

.field public static ICE_CREAM_SANDWICH:I = 0xe

.field public static ICE_CREAM_SANDWICH_MR1:I = 0xf

.field public static JELLY_BEAN:I = 0x10

.field public static JELLY_BEAN_MR1:I = 0x11

.field public static JELLY_BEAN_MR2:I = 0x12

.field public static KITKAT:I = 0x13

.field public static KITKAT_MR1:I = 0x14

.field public static LOLLIPOP:I = 0x15

.field public static LOLLIPOP_MR1:I = 0x16

.field private static mBlackListModes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "virtual machine"

    const-string v1, "CHM-TL"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hunantv/media/player/helper/BuildHelper;->mBlackListModes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findX86(Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    const-string v0, "model name"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/helper/BuildHelper;->parseCpuInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    const-string v2, "intel"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "vendor_id"

    invoke-static {p0, v0}, Lcom/hunantv/media/player/helper/BuildHelper;->parseCpuInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_1

    return v1

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static getCpuFrequence()I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/system/bin/cat"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    return v0

    :goto_1
    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getDecodeSupportMaxHeight()I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    return v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x438

    return v0

    :cond_1
    const-string v1, "HTC Desire X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static getDecodeSupportMaxWidth()I
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    return v0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x780

    return v0

    :cond_1
    const-string v1, "HTC Desire X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x320

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public static final getManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static final getModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getNeedSpecialSurface()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SM-N900"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "GT-N710"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static getNumCores()I
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    return v0
.end method

.method public static final getParsedCpuAbiInfo()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->get_CPU_ABI()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "\n"

    if-nez v2, :cond_0

    const-string v2, "CPU ABI : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->get_CPU_ABI2()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CPU ABI2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSDKVersion()I
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public static final get_CPU_ABI()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    return-object v0
.end method

.method public static final get_CPU_ABI2()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Build;

    const-string v2, "CPU_ABI2"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method public static final isApi11_HoneyComb()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->HONEYCOMB:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->HONEYCOMB_MR2:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi11_HoneyCombOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->HONEYCOMB:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi14_IceCreamSandwich()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ICE_CREAM_SANDWICH:I

    if-ne v0, v1, :cond_0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ICE_CREAM_SANDWICH_MR1:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi14_IceCreamSandwichOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ICE_CREAM_SANDWICH:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi16_JellyBean()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi16_JellyBeanOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi17_JellyBeanMR1()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN_MR1:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi17_JellyBeanMR1OrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN_MR1:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi18_JellyBeanMR2()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN_MR2:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi18_JellyBeanMR2OrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN_MR2:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi19_KitKat()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->KITKAT:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi19_KitKatOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->KITKAT:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi20_KitKatMR1()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->KITKAT_MR1:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi20_KitKatMR1OrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->KITKAT_MR1:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi21_LOLLIPOPO()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->LOLLIPOP:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi21_LollipopOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->LOLLIPOP:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi22_LollipopMR1()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->LOLLIPOP_MR1:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi22_LollipopMR1OrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->LOLLIPOP_MR1:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi23_AndroidM()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_M:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi23_AndroidMOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_M:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi24_AndroidN()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_N:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi24_AndroidNOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_N:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi25_AndroidNMR1()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_N_MR1:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi25_AndroidNMR1OrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_N_MR1:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi26_AndroidO()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_O:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi26_AndroidOOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_O:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi29_LollipopOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ANDROID_Q:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi9_GingerBread()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->FROYO:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->GINGERBREAD_MR1:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApi9_GingerBreadOrLater()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->GINGERBREAD:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isApiLess18_JellyBeanMR2()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->JELLY_BEAN_MR2:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final isIceCreamSandwich()Z
    .locals 2

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->getSDKVersion()I

    move-result v0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ICE_CREAM_SANDWICH:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/hunantv/media/player/helper/BuildHelper;->ICE_CREAM_SANDWICH_MR1:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isImgdsBlackList()Z
    .locals 6

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/hunantv/media/player/helper/BuildHelper;->mBlackListModes:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isX86FromCpuinfo()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x3e8

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hunantv/media/player/helper/BuildHelper;->findX86(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {v2}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_2
    return v0

    :goto_3
    invoke-static {v1}, Lcom/hunantv/media/report/c/f;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private static parseCpuInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\\s+\\:\\s*(.*)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static supportABI(Ljava/lang/String;)Z
    .locals 7

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    array-length v3, v0

    if-lez v3, :cond_2

    array-length v3, v0

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->get_CPU_ABI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->get_CPU_ABI2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public static supportARM()Z
    .locals 1

    const-string v0, "armeabi"

    invoke-static {v0}, Lcom/hunantv/media/player/helper/BuildHelper;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportARM64v8a()Z
    .locals 1

    const-string v0, "arm64-v8a"

    invoke-static {v0}, Lcom/hunantv/media/player/helper/BuildHelper;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportARMv7a()Z
    .locals 1

    const-string v0, "armeabi-v7a"

    invoke-static {v0}, Lcom/hunantv/media/player/helper/BuildHelper;->supportABI(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static supportX86()Z
    .locals 3

    const-string v0, "x86"

    invoke-static {v0}, Lcom/hunantv/media/player/helper/BuildHelper;->supportABI(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isApi16_JellyBeanOrLater()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/hunantv/media/player/helper/MediaCodecHelp;->isIntelMediaCodec()Z

    move-result v0

    const-string v1, "ImgoPlayerLibJava"

    if-eqz v0, :cond_0

    const-string v2, "isIntelMediaCodec"

    invoke-static {v1, v2}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/hunantv/media/player/helper/BuildHelper;->isX86FromCpuinfo()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "isX86FromCpuinfo"

    invoke-static {v1, v0}, Lcom/hunantv/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public static supportedAbis()[Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

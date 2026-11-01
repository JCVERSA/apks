.class synthetic Lapp/fast/ssh/VoucherActivity$5;
.super Ljava/lang/Object;
.source "VoucherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapp/fast/ssh/VoucherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$app$fast$ssh$core$VpnStatus$VpnState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    invoke-static {}, Lapp/fast/ssh/core/VpnStatus$VpnState;->values()[Lapp/fast/ssh/core/VpnStatus$VpnState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lapp/fast/ssh/VoucherActivity$5;->$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState:[I

    :try_start_0
    sget-object v1, Lapp/fast/ssh/core/VpnStatus$VpnState;->CONNECTING:Lapp/fast/ssh/core/VpnStatus$VpnState;

    invoke-virtual {v1}, Lapp/fast/ssh/core/VpnStatus$VpnState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lapp/fast/ssh/VoucherActivity$5;->$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState:[I

    sget-object v1, Lapp/fast/ssh/core/VpnStatus$VpnState;->RECONNECTING:Lapp/fast/ssh/core/VpnStatus$VpnState;

    invoke-virtual {v1}, Lapp/fast/ssh/core/VpnStatus$VpnState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lapp/fast/ssh/VoucherActivity$5;->$SwitchMap$app$fast$ssh$core$VpnStatus$VpnState:[I

    sget-object v1, Lapp/fast/ssh/core/VpnStatus$VpnState;->DISCONNECTED:Lapp/fast/ssh/core/VpnStatus$VpnState;

    invoke-virtual {v1}, Lapp/fast/ssh/core/VpnStatus$VpnState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

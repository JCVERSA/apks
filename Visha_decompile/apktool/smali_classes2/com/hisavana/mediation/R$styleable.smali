.class public final Lcom/hisavana/mediation/R$styleable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final TMediaView:[I

.field public static final TMediaView_sspScaleType:I = 0x0

.field public static final TStoreMarkView:[I

.field public static final TStoreMarkView_sdkTypeSetStoreMark:I = 0x0

.field public static final TStoreMarkView_storeTextColor:I = 0x1

.field public static final TStoreMarkView_storeTextSize:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const v0, 0x7f040806

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/hisavana/mediation/R$styleable;->TMediaView:[I

    const v0, 0x7f04081e

    const v1, 0x7f04081f

    const v2, 0x7f040771

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/hisavana/mediation/R$styleable;->TStoreMarkView:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

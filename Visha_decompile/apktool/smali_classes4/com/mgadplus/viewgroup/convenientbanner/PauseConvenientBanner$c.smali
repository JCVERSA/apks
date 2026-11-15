.class public final enum Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

.field public static final enum ALIGN_PARENT_LEFT:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

.field public static final enum ALIGN_PARENT_RIGHT:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

.field public static final enum CENTER_HORIZONTAL:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    const-string v1, "ALIGN_PARENT_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->ALIGN_PARENT_LEFT:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    new-instance v1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    const-string v2, "ALIGN_PARENT_RIGHT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->ALIGN_PARENT_RIGHT:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    new-instance v2, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    const-string v3, "CENTER_HORIZONTAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->CENTER_HORIZONTAL:Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    filled-new-array {v0, v1, v2}, [Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    move-result-object v0

    sput-object v0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->$VALUES:[Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;
    .locals 1

    const-class v0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    return-object p0
.end method

.method public static values()[Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;
    .locals 1

    sget-object v0, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->$VALUES:[Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    invoke-virtual {v0}, [Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner$c;

    return-object v0
.end method

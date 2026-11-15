.class public final enum Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/integration/webp/WebpHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebpImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum WEBP_EXTENDED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum WEBP_EXTENDED_ANIMATED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum WEBP_EXTENDED_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum WEBP_LOSSLESS:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum WEBP_LOSSLESS_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

.field public static final enum WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;


# instance fields
.field private final hasAlpha:Z

.field private final hasAnimation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v1, "WEBP_SIMPLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_SIMPLE:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    new-instance v1, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v3, "WEBP_LOSSLESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_LOSSLESS:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    new-instance v3, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v5, "WEBP_LOSSLESS_WITH_ALPHA"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v3, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_LOSSLESS_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    new-instance v5, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v6, "WEBP_EXTENDED"

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7, v2, v2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    new-instance v6, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v7, "WEBP_EXTENDED_WITH_ALPHA"

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8, v4, v2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v6, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED_WITH_ALPHA:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    new-instance v7, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v8, "WEBP_EXTENDED_ANIMATED"

    const/4 v9, 0x5

    invoke-direct {v7, v8, v9, v2, v4}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v7, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->WEBP_EXTENDED_ANIMATED:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    new-instance v8, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    const-string v4, "NONE_WEBP"

    const/4 v9, 0x6

    invoke-direct {v8, v4, v9, v2, v2}, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;-><init>(Ljava/lang/String;IZZ)V

    sput-object v8, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->NONE_WEBP:Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-object v2, v3

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v8

    filled-new-array/range {v0 .. v6}, [Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->$VALUES:[Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->hasAlpha:Z

    iput-boolean p4, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->hasAnimation:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1

    const-class v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->$VALUES:[Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    invoke-virtual {v0}, [Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->hasAlpha:Z

    return p0
.end method

.method public hasAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/bumptech/glide/integration/webp/WebpHeaderParser$WebpImageType;->hasAnimation:Z

    return p0
.end method

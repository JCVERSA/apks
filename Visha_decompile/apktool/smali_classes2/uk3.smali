.class public interface abstract Luk3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Luk3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsk3;

    invoke-direct {v0}, Lsk3;-><init>()V

    sput-object v0, Luk3;->a:Luk3;

    return-void
.end method

.method public static synthetic a()[Lnk3;
    .locals 1

    invoke-static {}, Luk3;->lambda$static$0()[Lnk3;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$static$0()[Lnk3;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnk3;

    return-object v0
.end method


# virtual methods
.method public abstract createExtractors()[Lnk3;
.end method

.method public createExtractors(Landroid/net/Uri;Ljava/util/Map;)[Lnk3;
    .locals 0

    .line 1
    invoke-interface {p0}, Luk3;->createExtractors()[Lnk3;

    move-result-object p0

    return-object p0
.end method

.class public abstract Lcom/iab/omid/library/hisavana/adsession/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/hisavana/adsession/a$a;
    }
.end annotation


# static fields
.field public static a:Lyid;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyid;

    invoke-direct {v0}, Lyid;-><init>()V

    sput-object v0, Lcom/iab/omid/library/hisavana/adsession/a;->a:Lyid;

    return-void
.end method

.method public static synthetic a(Lcom/iab/omid/library/hisavana/adsession/a;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

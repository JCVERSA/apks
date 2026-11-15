.class public abstract Lcom/hisavana/mediation/config/ConfigContentHelper$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/ConfigContentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/hisavana/mediation/config/ConfigContentHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/hisavana/mediation/config/ConfigContentHelper;-><init>(Lcom/hisavana/mediation/config/ConfigContentHelper$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/hisavana/mediation/config/ConfigContentHelper$a;->a:Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a()Lcom/hisavana/mediation/config/ConfigContentHelper;
    .locals 1

    .line 1
    sget-object v0, Lcom/hisavana/mediation/config/ConfigContentHelper$a;->a:Lcom/hisavana/mediation/config/ConfigContentHelper;

    .line 2
    .line 3
    return-object v0
.end method

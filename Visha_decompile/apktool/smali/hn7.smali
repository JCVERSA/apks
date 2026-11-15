.class public final synthetic Lhn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/model/data/CountryData;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/xuanniao/account/model/data/CountryData;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhn7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iput-object p2, p0, Lhn7;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lhn7;->b:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p0, p0, Lhn7;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lon7;->c(Lcom/transsion/xuanniao/account/model/data/CountryData;Landroid/content/Context;)V

    return-void
.end method

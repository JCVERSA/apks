.class public final Lyld$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx1d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyld;->c(Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx1d;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lx1d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lyld$a;->a:Lx1d;

    iput-object p2, p0, Lyld$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lyld$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lyld$a;->a:Lx1d;

    if-eqz v0, :cond_0

    new-instance v1, Lx1d$a;

    invoke-direct {v1}, Lx1d$a;-><init>()V

    iget-object v2, p0, Lyld$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lx1d$a;->d(Ljava/lang/String;)Lx1d$a;

    move-result-object v1

    iget-object v2, p0, Lyld$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lx1d$a;->b(Ljava/lang/String;)Lx1d$a;

    move-result-object v1

    new-instance v2, Lyld$a$a;

    invoke-direct {v2, p0}, Lyld$a$a;-><init>(Lyld$a;)V

    invoke-virtual {v1, v2}, Lx1d$a;->a(Lz1d;)Lx1d$a;

    move-result-object p0

    invoke-virtual {v0, p0}, Lx1d;->e(Lx1d$a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const-string p0, "mgmi"

    const-string v0, "MgmiDownloadManager onFreeSizeFail"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

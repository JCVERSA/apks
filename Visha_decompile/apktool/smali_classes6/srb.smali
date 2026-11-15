.class public final Lsrb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lsrb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsrb;

    invoke-direct {v0}, Lsrb;-><init>()V

    sput-object v0, Lsrb;->a:Lsrb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;
    .locals 0

    const-string p0, "templates"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/cloud_drive/base/api/model/FileVideoTemplate;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    const-string p0, "text"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    invoke-static {p0}, Lc07;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

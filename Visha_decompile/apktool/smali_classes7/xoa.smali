.class public final Lxoa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxoa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxoa;

    invoke-direct {v0}, Lxoa;-><init>()V

    sput-object v0, Lxoa;->a:Lxoa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lc;->d:Le;

    sget-object p2, Lc;->c:Ljava/lang/String;

    const-string v0, "Could not send crash Toast"

    invoke-interface {p1, p2, v0, p0}, Le;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

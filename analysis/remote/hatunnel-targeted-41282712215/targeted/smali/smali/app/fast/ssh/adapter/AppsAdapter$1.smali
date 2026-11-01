.class Lapp/fast/ssh/adapter/AppsAdapter$1;
.super Ljava/lang/Object;
.source "AppsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/adapter/AppsAdapter;->onBindViewHolder(Lapp/fast/ssh/adapter/AppsAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/adapter/AppsAdapter;

.field final synthetic val$app:Lapp/fast/ssh/adapter/AppsAdapter$App;


# direct methods
.method constructor <init>(Lapp/fast/ssh/adapter/AppsAdapter;Lapp/fast/ssh/adapter/AppsAdapter$App;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/adapter/AppsAdapter$1;->this$0:Lapp/fast/ssh/adapter/AppsAdapter;

    iput-object p2, p0, Lapp/fast/ssh/adapter/AppsAdapter$1;->val$app:Lapp/fast/ssh/adapter/AppsAdapter$App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lapp/fast/ssh/adapter/AppsAdapter$1;->val$app:Lapp/fast/ssh/adapter/AppsAdapter$App;

    iget-object p1, p1, Lapp/fast/ssh/adapter/AppsAdapter$App;->packageName:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo p1, "\u2fc0"

    invoke-static {p1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "\u2fc1"

    invoke-static {v1}, Lapp/fast/ssh/ProtectedFastSSH;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lapp/fast/ssh/adapter/AppsAdapter$1;->this$0:Lapp/fast/ssh/adapter/AppsAdapter;

    invoke-static {p1}, Lapp/fast/ssh/adapter/AppsAdapter;->access$300(Lapp/fast/ssh/adapter/AppsAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

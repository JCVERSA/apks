.class Lapp/fast/ssh/AppsActivity$1;
.super Ljava/lang/Object;
.source "AppsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/AppsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/AppsActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/AppsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/AppsActivity$1;->this$0:Lapp/fast/ssh/AppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lapp/fast/ssh/AppsActivity$1;->this$0:Lapp/fast/ssh/AppsActivity;

    invoke-static {p1}, Lapp/fast/ssh/AppsActivity;->access$000(Lapp/fast/ssh/AppsActivity;)V

    return-void
.end method

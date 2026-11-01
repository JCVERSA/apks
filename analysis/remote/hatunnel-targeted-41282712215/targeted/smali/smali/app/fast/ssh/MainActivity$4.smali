.class Lapp/fast/ssh/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/fast/ssh/MainActivity;->processUpdate(Lorg/json/JSONObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lapp/fast/ssh/MainActivity;


# direct methods
.method constructor <init>(Lapp/fast/ssh/MainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lapp/fast/ssh/MainActivity$4;->this$0:Lapp/fast/ssh/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lapp/fast/ssh/MainActivity$4;->this$0:Lapp/fast/ssh/MainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lapp/fast/ssh/MainActivity;->access$302(Lapp/fast/ssh/MainActivity;Z)Z

    return-void
.end method

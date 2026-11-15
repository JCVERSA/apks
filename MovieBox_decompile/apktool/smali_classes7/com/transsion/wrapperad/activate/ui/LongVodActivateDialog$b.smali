.class public final Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lnw/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 5

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/transsion/baseui/dialog/BaseDialog;->getClassTag()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, " --> showAd() --> onActivate{open App \u72b6\u6001\u56de\u8c03} --> isActivate = "

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x2

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    invoke-static {v0, v1, v4, v2, v3}, Lwf/a$a;->g(Lwf/a$a;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 36
    .line 37
    invoke-static {v0, p1}, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;->p0(Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;Z)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog$b;->a:Lcom/transsion/wrapperad/activate/ui/LongVodActivateDialog;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

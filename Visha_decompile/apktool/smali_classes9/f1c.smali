.class public final synthetic Lf1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/widgets/CustomTimePicker$c;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic b:Landroid/widget/Button;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Lf1c;->b:Landroid/widget/Button;

    iput-object p3, p0, Lf1c;->c:Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lf1c;->a:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Lf1c;->b:Landroid/widget/Button;

    iget-object p0, p0, Lf1c;->c:Lcom/transsion/widgetslib/dialog/d;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->T(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Landroid/widget/Button;Lcom/transsion/widgetslib/dialog/d;II)V

    return-void
.end method

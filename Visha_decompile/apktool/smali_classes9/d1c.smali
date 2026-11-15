.class public final synthetic Ld1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Ld1c;->c:Lcom/transsion/widgetslib/dialog/d;

    iput-object p3, p0, Ld1c;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    iput p4, p0, Ld1c;->e:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ld1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Ld1c;->c:Lcom/transsion/widgetslib/dialog/d;

    iget-object v2, p0, Ld1c;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    iget p0, p0, Ld1c;->e:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->n(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;ILandroid/view/View;)V

    return-void
.end method

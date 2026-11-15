.class public final synthetic Le1c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

.field public final synthetic c:Lcom/transsion/widgetslib/dialog/d;

.field public final synthetic d:Lcom/transsion/playercommon/widgets/CustomTimePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iput-object p2, p0, Le1c;->c:Lcom/transsion/widgetslib/dialog/d;

    iput-object p3, p0, Le1c;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Le1c;->b:Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;

    iget-object v1, p0, Le1c;->c:Lcom/transsion/widgetslib/dialog/d;

    iget-object p0, p0, Le1c;->d:Lcom/transsion/playercommon/widgets/CustomTimePicker;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;->h0(Lcom/transsion/magicvideo/widgets/VideoPlayerContentView;Lcom/transsion/widgetslib/dialog/d;Lcom/transsion/playercommon/widgets/CustomTimePicker;Landroid/view/View;)V

    return-void
.end method

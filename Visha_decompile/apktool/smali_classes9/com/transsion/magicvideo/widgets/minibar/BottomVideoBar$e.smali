.class public final Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$e;
.super Lux0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->initClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;


# direct methods
.method public constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$e;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-direct {p0}, Lux0;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoDoubleClick(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$e;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->access$goVideoDetail(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V

    return-void
.end method

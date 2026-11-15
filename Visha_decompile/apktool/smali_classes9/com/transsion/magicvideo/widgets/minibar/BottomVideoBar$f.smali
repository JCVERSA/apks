.class public final Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$f;
.super Los8;
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

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$f;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-direct {p0}, Los8;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar$f;->b:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    invoke-static {p0}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->access$getMPlayManager$p(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)Lcom/transsion/magicvideo/player/VideoPlayManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/magicvideo/player/VideoPlayManager;->r1()V

    return-void
.end method

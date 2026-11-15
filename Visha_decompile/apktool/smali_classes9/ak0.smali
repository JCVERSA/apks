.class public final synthetic Lak0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lak0;->a:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lak0;->a:Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;->w(Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;Ljava/util/List;)V

    return-void
.end method

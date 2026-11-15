.class public final synthetic Lfk4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfk4;->a:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lfk4;->a:Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;

    check-cast p1, Lwoc;

    invoke-virtual {p0, p1}, Lcom/transsion/magicvideo/widgets/GuideViews/GuideView;->q(Lwoc;)V

    return-void
.end method

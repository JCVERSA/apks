.class public Lcom/transsion/widgetslib/view/damping/DampingLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/effectengine/bounceeffect/IOverScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/view/damping/DampingLayout;->W()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/widgetslib/view/damping/DampingLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/view/damping/DampingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$b;->a:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOverScrollUpdated(F)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetslib/view/damping/DampingLayout$b;->a:Lcom/transsion/widgetslib/view/damping/DampingLayout;

    invoke-static {p0, p1}, Lcom/transsion/widgetslib/view/damping/DampingLayout;->M(Lcom/transsion/widgetslib/view/damping/DampingLayout;F)V

    return-void
.end method

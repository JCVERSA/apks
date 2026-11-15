.class Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;


# direct methods
.method public constructor <init>(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;->a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$1;->a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.class public Lcom/mgadplus/brower/CustomWebActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgadplus/brower/CustomWebActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/mgadplus/brower/CustomWebActivity;


# direct methods
.method public constructor <init>(Lcom/mgadplus/brower/CustomWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgadplus/brower/CustomWebActivity$a;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/brower/CustomWebActivity$a;->b:Lcom/mgadplus/brower/CustomWebActivity;

    invoke-virtual {p0}, Lcom/mgadplus/brower/CustomWebActivity;->finish()V

    return-void
.end method

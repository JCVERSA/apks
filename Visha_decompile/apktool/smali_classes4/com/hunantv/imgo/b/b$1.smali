.class Lcom/hunantv/imgo/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hunantv/imgo/b/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hunantv/imgo/b/b;


# direct methods
.method public constructor <init>(Lcom/hunantv/imgo/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/imgo/b/b$1;->a:Lcom/hunantv/imgo/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/hunantv/imgo/b/b$1;->a:Lcom/hunantv/imgo/b/b;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

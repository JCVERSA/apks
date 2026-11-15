.class Lcom/mgadplus/Imagework/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcjd;


# direct methods
.method public constructor <init>(Lcjd;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/mgadplus/Imagework/i$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/Imagework/i$1;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    return-void
.end method

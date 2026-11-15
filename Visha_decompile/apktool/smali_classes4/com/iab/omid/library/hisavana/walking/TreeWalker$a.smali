.class Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iab/omid/library/hisavana/walking/TreeWalker;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iab/omid/library/hisavana/walking/TreeWalker;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;->a:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/walking/TreeWalker$a;->a:Lcom/iab/omid/library/hisavana/walking/TreeWalker;

    invoke-static {p0}, Lcom/iab/omid/library/hisavana/walking/TreeWalker;->c(Lcom/iab/omid/library/hisavana/walking/TreeWalker;)Lb7d;

    move-result-object p0

    invoke-virtual {p0}, Lb7d;->c()V

    return-void
.end method

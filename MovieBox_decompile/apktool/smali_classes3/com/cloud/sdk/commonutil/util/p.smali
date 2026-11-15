.class public final synthetic Lcom/cloud/sdk/commonutil/util/p;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/sdk/commonutil/util/Preconditions$a;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/sdk/commonutil/util/p;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/cloud/sdk/commonutil/util/p;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/sdk/commonutil/util/p;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/cloud/sdk/commonutil/util/p;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/sdk/commonutil/util/q;->a(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

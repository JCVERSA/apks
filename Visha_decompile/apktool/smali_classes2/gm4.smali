.class public final synthetic Lgm4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc74;

.field public final synthetic c:Le74;


# direct methods
.method public synthetic constructor <init>(Lc74;Le74;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgm4;->b:Lc74;

    iput-object p2, p0, Lgm4;->c:Le74;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgm4;->b:Lc74;

    iget-object p0, p0, Lgm4;->c:Le74;

    invoke-static {v0, p0}, Lcom/cloud/sdk/commonutil/util/HSScopeHelper;->b(Lc74;Le74;)V

    return-void
.end method

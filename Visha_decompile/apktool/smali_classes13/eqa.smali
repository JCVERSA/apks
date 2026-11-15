.class public final synthetic Leqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/ToolsFragment$a;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leqa;->b:Lcom/transsion/tools/fragments/ToolsFragment$a;

    iput-boolean p2, p0, Leqa;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Leqa;->b:Lcom/transsion/tools/fragments/ToolsFragment$a;

    iget-boolean p0, p0, Leqa;->c:Z

    invoke-static {v0, p0}, Lcom/transsion/tools/fragments/ToolsFragment$a;->d(Lcom/transsion/tools/fragments/ToolsFragment$a;Z)V

    return-void
.end method

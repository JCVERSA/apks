.class public final synthetic Lfqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/ToolsFragment$b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfqa;->b:Lcom/transsion/tools/fragments/ToolsFragment$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lfqa;->b:Lcom/transsion/tools/fragments/ToolsFragment$b;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment$b;->c(Lcom/transsion/tools/fragments/ToolsFragment$b;)V

    return-void
.end method

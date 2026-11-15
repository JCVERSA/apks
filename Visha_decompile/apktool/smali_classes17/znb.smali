.class public final synthetic Lznb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/yandex/div/core/view2/errors/VariableMonitorView;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/div/core/view2/errors/VariableMonitorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lznb;->b:Lcom/yandex/div/core/view2/errors/VariableMonitorView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lznb;->b:Lcom/yandex/div/core/view2/errors/VariableMonitorView;

    invoke-static {p0}, Lcom/yandex/div/core/view2/errors/VariableMonitorView;->a(Lcom/yandex/div/core/view2/errors/VariableMonitorView;)V

    return-void
.end method

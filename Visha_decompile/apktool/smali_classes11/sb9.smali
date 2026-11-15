.class public final synthetic Lsb9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsb9;->b:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lsb9;->b:Lcom/transsion/onlinevideo/adapter/SelectionAdapter;

    check-cast p1, Lub9;

    invoke-static {p0, p1}, Lcom/transsion/onlinevideo/adapter/SelectionAdapter;->b(Lcom/transsion/onlinevideo/adapter/SelectionAdapter;Lub9;)V

    return-void
.end method

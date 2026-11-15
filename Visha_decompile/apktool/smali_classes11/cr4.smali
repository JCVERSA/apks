.class public final synthetic Lcr4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lsg7;


# direct methods
.method public synthetic constructor <init>(Lsg7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcr4;->b:Lsg7;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcr4;->b:Lsg7;

    invoke-static {p0}, Lcom/transsion/onlinevideo/history/HistoryManager$b;->a(Lsg7;)V

    return-void
.end method

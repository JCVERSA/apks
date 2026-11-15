.class public final synthetic Llc9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lmc9;


# direct methods
.method public synthetic constructor <init>(Lmc9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llc9;->b:Lmc9;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Llc9;->b:Lmc9;

    invoke-static {p0}, Lmc9;->a(Lmc9;)V

    return-void
.end method

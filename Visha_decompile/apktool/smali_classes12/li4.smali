.class public final synthetic Lli4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:Lorg/mozilla/javascript/tools/shell/Global;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/tools/shell/Global;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lli4;->b:Lorg/mozilla/javascript/tools/shell/Global;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lli4;->b:Lorg/mozilla/javascript/tools/shell/Global;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/tools/shell/Global;->b(Lorg/mozilla/javascript/tools/shell/Global;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

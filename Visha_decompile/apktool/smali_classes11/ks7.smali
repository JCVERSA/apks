.class public final synthetic Lks7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:[Ljava/lang/String;

.field public final synthetic c:Lorg/mozilla/javascript/Script;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/String;Lorg/mozilla/javascript/Script;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lks7;->b:[Ljava/lang/String;

    iput-object p2, p0, Lks7;->c:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lks7;->b:[Ljava/lang/String;

    iget-object p0, p0, Lks7;->c:Lorg/mozilla/javascript/Script;

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/optimizer/OptRuntime;->a([Ljava/lang/String;Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

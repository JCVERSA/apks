.class public final synthetic Lorg/mozilla/javascript/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Lorg/mozilla/javascript/Interpreter$CallFrame;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/e;->a:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iput-object p2, p0, Lorg/mozilla/javascript/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/javascript/e;->a:Lorg/mozilla/javascript/Interpreter$CallFrame;

    iget-object p0, p0, Lorg/mozilla/javascript/e;->b:Ljava/lang/Object;

    check-cast p1, Lorg/mozilla/javascript/c;

    invoke-static {v0, p0, p1}, Lorg/mozilla/javascript/Interpreter$CallFrame;->c(Lorg/mozilla/javascript/Interpreter$CallFrame;Ljava/lang/Object;Lorg/mozilla/javascript/c;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

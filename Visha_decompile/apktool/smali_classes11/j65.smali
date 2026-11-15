.class public final synthetic Lj65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:Lorg/mozilla/javascript/Script;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Script;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj65;->b:Lorg/mozilla/javascript/Script;

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj65;->b:Lorg/mozilla/javascript/Script;

    invoke-static {p0, p1}, Lorg/mozilla/javascript/JavaAdapter;->a(Lorg/mozilla/javascript/Script;Lorg/mozilla/javascript/Context;)Lorg/mozilla/javascript/ScriptableObject;

    move-result-object p0

    return-object p0
.end method

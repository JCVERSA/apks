.class public final synthetic Li65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/javascript/ContextAction;


# instance fields
.field public final synthetic b:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic c:Lorg/mozilla/javascript/Scriptable;

.field public final synthetic d:Lorg/mozilla/javascript/Function;

.field public final synthetic e:[Ljava/lang/Object;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li65;->b:Lorg/mozilla/javascript/Scriptable;

    iput-object p2, p0, Li65;->c:Lorg/mozilla/javascript/Scriptable;

    iput-object p3, p0, Li65;->d:Lorg/mozilla/javascript/Function;

    iput-object p4, p0, Li65;->e:[Ljava/lang/Object;

    iput-wide p5, p0, Li65;->f:J

    return-void
.end method


# virtual methods
.method public final run(Lorg/mozilla/javascript/Context;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Li65;->b:Lorg/mozilla/javascript/Scriptable;

    iget-object v1, p0, Li65;->c:Lorg/mozilla/javascript/Scriptable;

    iget-object v2, p0, Li65;->d:Lorg/mozilla/javascript/Function;

    iget-object v3, p0, Li65;->e:[Ljava/lang/Object;

    iget-wide v4, p0, Li65;->f:J

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lorg/mozilla/javascript/JavaAdapter;->b(Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Scriptable;Lorg/mozilla/javascript/Function;[Ljava/lang/Object;JLorg/mozilla/javascript/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

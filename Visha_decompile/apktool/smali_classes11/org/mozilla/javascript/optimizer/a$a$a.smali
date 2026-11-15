.class public Lorg/mozilla/javascript/optimizer/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/optimizer/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lorg/mozilla/javascript/Node;

.field public b:[I

.field public c:[I

.field public d:Lorg/mozilla/javascript/Node;

.field public final synthetic e:Lorg/mozilla/javascript/optimizer/a$a;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/optimizer/a$a;Lorg/mozilla/javascript/ast/Jump;Lorg/mozilla/javascript/Node;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->e:Lorg/mozilla/javascript/optimizer/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->a:Lorg/mozilla/javascript/Node;

    const/4 p1, 0x5

    new-array p2, p1, [I

    iput-object p2, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->b:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->c:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/mozilla/javascript/optimizer/a$a$a;->d:Lorg/mozilla/javascript/Node;

    return-void
.end method

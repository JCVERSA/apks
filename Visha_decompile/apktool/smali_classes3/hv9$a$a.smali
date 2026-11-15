.class public Lhv9$a$a;
.super Lhv9$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhv9$a;->b(Lhv9;Ljava/lang/CharSequence;)Lhv9$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic i:Lhv9$a;


# direct methods
.method public constructor <init>(Lhv9$a;Lhv9;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lhv9$a$a;->i:Lhv9$a;

    invoke-direct {p0, p2, p3}, Lhv9$c;-><init>(Lhv9;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public e(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public f(I)I
    .locals 1

    iget-object v0, p0, Lhv9$a$a;->i:Lhv9$a;

    iget-object v0, v0, Lhv9$a;->a:Lev0;

    iget-object p0, p0, Lhv9$c;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0, p1}, Lev0;->e(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

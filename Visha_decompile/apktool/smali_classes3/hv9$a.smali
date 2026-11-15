.class public Lhv9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhv9$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhv9;->g(Lev0;)Lhv9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lev0;


# direct methods
.method public constructor <init>(Lev0;)V
    .locals 0

    iput-object p1, p0, Lhv9$a;->a:Lev0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lhv9;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lhv9$a;->b(Lhv9;Ljava/lang/CharSequence;)Lhv9$c;

    move-result-object p0

    return-object p0
.end method

.method public b(Lhv9;Ljava/lang/CharSequence;)Lhv9$c;
    .locals 1

    new-instance v0, Lhv9$a$a;

    invoke-direct {v0, p0, p1, p2}, Lhv9$a$a;-><init>(Lhv9$a;Lhv9;Ljava/lang/CharSequence;)V

    return-object v0
.end method

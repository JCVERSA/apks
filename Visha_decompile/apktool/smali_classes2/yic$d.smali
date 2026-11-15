.class public final Lyic$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final b:I

.field public final c:Lwic;


# direct methods
.method public constructor <init>(ILwic;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lyic$d;->b:I

    iput-object p2, p0, Lyic$d;->c:Lwic;

    return-void
.end method


# virtual methods
.method public a(Lyic$d;)I
    .locals 0

    iget p0, p0, Lyic$d;->b:I

    iget p1, p1, Lyic$d;->b:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lyic$d;

    invoke-virtual {p0, p1}, Lyic$d;->a(Lyic$d;)I

    move-result p0

    return p0
.end method

.class public final Lg3$d;
.super Lg3;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final b:Lg3;

.field public final c:I

.field public d:I


# direct methods
.method public constructor <init>(Lg3;II)V
    .locals 1

    const-string v0, "list"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg3;-><init>()V

    iput-object p1, p0, Lg3$d;->b:Lg3;

    iput p2, p0, Lg3$d;->c:I

    sget-object v0, Lg3;->Companion:Lg3$a;

    invoke-virtual {p1}, Lr2;->size()I

    move-result p1

    invoke-virtual {v0, p2, p3, p1}, Lg3$a;->d(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lg3$d;->d:I

    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lg3;->Companion:Lg3$a;

    iget v1, p0, Lg3$d;->d:I

    invoke-virtual {v0, p1, v1}, Lg3$a;->b(II)V

    iget-object v0, p0, Lg3$d;->b:Lg3;

    iget p0, p0, Lg3$d;->c:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Lg3;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSize()I
    .locals 0

    iget p0, p0, Lg3$d;->d:I

    return p0
.end method

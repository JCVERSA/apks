.class public final synthetic Ljs9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljs9;->b:I

    iput-boolean p2, p0, Ljs9;->c:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Ljs9;->b:I

    iget-boolean p0, p0, Ljs9;->c:Z

    invoke-static {v0, p0, p1, p2}, Lns9;->c(IZLjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

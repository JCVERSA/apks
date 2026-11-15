.class public final synthetic Lyz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyz;->b:Ljava/util/ArrayList;

    iput p2, p0, Lyz;->c:I

    iput-object p3, p0, Lyz;->d:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lyz;->b:Ljava/util/ArrayList;

    iget v1, p0, Lyz;->c:I

    iget-object p0, p0, Lyz;->d:Ljava/util/ArrayList;

    check-cast p1, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-static {v0, v1, p0, p1}, Lb00;->b(Ljava/util/ArrayList;ILjava/util/ArrayList;Lcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

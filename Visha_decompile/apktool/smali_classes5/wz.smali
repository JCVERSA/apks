.class public final synthetic Lwz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwz;->b:Ljava/util/ArrayList;

    iput p2, p0, Lwz;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lwz;->b:Ljava/util/ArrayList;

    iget p0, p0, Lwz;->c:I

    check-cast p1, Lcom/transsion/dbdata/database/PlayListMedia;

    invoke-static {v0, p0, p1}, Lb00;->e(Ljava/util/ArrayList;ILcom/transsion/dbdata/database/PlayListMedia;)V

    return-void
.end method

.class public Lo45;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/io/Writer;

.field public final synthetic c:Lp45$a;


# direct methods
.method public constructor <init>(Lp45$a;Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lo45;->c:Lp45$a;

    iput-object p3, p0, Lo45;->b:Ljava/io/Writer;

    invoke-direct {p0, p2}, Ljava/io/Writer;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lo45;->b:Ljava/io/Writer;

    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write([CII)V
    .locals 0

    iget-object p0, p0, Lo45;->b:Ljava/io/Writer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    return-void
.end method

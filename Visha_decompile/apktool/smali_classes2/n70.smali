.class public final synthetic Ln70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lo70$a$a$a;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(Lo70$a$a$a;IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln70;->b:Lo70$a$a$a;

    iput p2, p0, Ln70;->c:I

    iput-wide p3, p0, Ln70;->d:J

    iput-wide p5, p0, Ln70;->e:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Ln70;->b:Lo70$a$a$a;

    iget v1, p0, Ln70;->c:I

    iget-wide v2, p0, Ln70;->d:J

    iget-wide v4, p0, Ln70;->e:J

    invoke-static/range {v0 .. v5}, Lo70$a$a;->a(Lo70$a$a$a;IJJ)V

    return-void
.end method

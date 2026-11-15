.class public Lm0a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/StringBuilder;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lm0a;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    iput-object v0, p0, Lm0a$b;->a:Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm0a$b;->c:Z

    iput-object p1, p0, Lm0a$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lm0a$b;
    .locals 2

    iget-object v0, p0, Lm0a$b;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Ldnb;->i(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lm0a$b;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lm0a$b;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm0a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Lm0a$b;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm0a$b;->c:Z

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lm0a$b;->a:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lm0a;->m(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lm0a$b;->a:Ljava/lang/StringBuilder;

    return-object v0
.end method

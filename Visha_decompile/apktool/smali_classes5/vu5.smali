.class public final synthetic Lvu5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/widgets/LrcViewNew;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/widgets/LrcViewNew;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    iput-wide p2, p0, Lvu5;->c:J

    iput-boolean p4, p0, Lvu5;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvu5;->b:Lcom/transsion/audio/widgets/LrcViewNew;

    iget-wide v1, p0, Lvu5;->c:J

    iget-boolean p0, p0, Lvu5;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/transsion/audio/widgets/LrcViewNew;->a(Lcom/transsion/audio/widgets/LrcViewNew;JZ)V

    return-void
.end method

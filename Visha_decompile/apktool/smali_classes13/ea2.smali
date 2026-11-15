.class public final synthetic Lea2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/utils/deviceinfo/a;

.field public final synthetic c:Lcom/transsion/utils/deviceinfo/a$b;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/utils/deviceinfo/a;Lcom/transsion/utils/deviceinfo/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lea2;->b:Lcom/transsion/utils/deviceinfo/a;

    iput-object p2, p0, Lea2;->c:Lcom/transsion/utils/deviceinfo/a$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lea2;->b:Lcom/transsion/utils/deviceinfo/a;

    iget-object p0, p0, Lea2;->c:Lcom/transsion/utils/deviceinfo/a$b;

    invoke-static {v0, p0}, Lcom/transsion/utils/deviceinfo/a;->a(Lcom/transsion/utils/deviceinfo/a;Lcom/transsion/utils/deviceinfo/a$b;)V

    return-void
.end method

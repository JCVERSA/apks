.class public final synthetic Lk5j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liog;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lv0f;

.field public final synthetic c:Lv0f;


# direct methods
.method public synthetic constructor <init>(ILv0f;Lv0f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk5j;->a:I

    iput-object p2, p0, Lk5j;->b:Lv0f;

    iput-object p3, p0, Lk5j;->c:Lv0f;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lqze;

    sget v0, Ll6j;->X:I

    iget-object v0, p0, Lk5j;->c:Lv0f;

    iget v1, p0, Lk5j;->a:I

    iget-object p0, p0, Lk5j;->b:Lv0f;

    invoke-interface {p1, p0, v0, v1}, Lqze;->d(Lv0f;Lv0f;I)V

    return-void
.end method

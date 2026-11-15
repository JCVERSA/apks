.class public interface abstract Lfreemarker/template/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzfa;


# static fields
.field public static final y6:Lfreemarker/template/a;

.field public static final z6:Lfreemarker/template/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfreemarker/template/FalseTemplateBooleanModel;

    invoke-direct {v0}, Lfreemarker/template/FalseTemplateBooleanModel;-><init>()V

    sput-object v0, Lfreemarker/template/a;->y6:Lfreemarker/template/a;

    new-instance v0, Lfreemarker/template/TrueTemplateBooleanModel;

    invoke-direct {v0}, Lfreemarker/template/TrueTemplateBooleanModel;-><init>()V

    sput-object v0, Lfreemarker/template/a;->z6:Lfreemarker/template/a;

    return-void
.end method


# virtual methods
.method public abstract getAsBoolean()Z
.end method

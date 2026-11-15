package com.transsion.publish;

import android.content.Context;
import android.content.Intent;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.publish.api.GroupBean;
import com.transsion.publish.ui.FilmReviewActivity;
import com.transsion.publish.ui.SelectImageActivity;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

public final class j implements jo.a {
    @Override
    public void a(Context context, String groupId, String groupName, String groupImage) {
        Intrinsics.h(context, "context");
        Intrinsics.h(groupId, "groupId");
        Intrinsics.h(groupName, "groupName");
        Intrinsics.h(groupImage, "groupImage");
        Intent intent = new Intent(context, (Class<?>) FilmReviewActivity.class);
        intent.setFlags(ASTNode.DEOP);
        intent.putExtra("sourceType", 2);
        GroupBean groupBean = new GroupBean();
        groupBean.setGroupId(groupId);
        groupBean.setName(groupName);
        groupBean.setAvatar(groupImage);
        intent.putExtra("group", groupBean);
        context.startActivity(intent);
    }

    @Override
    public void b(Context context) {
        Intrinsics.h(context, "context");
        Intent intent = new Intent(context, (Class<?>) FilmReviewActivity.class);
        intent.setFlags(ASTNode.DEOP);
        intent.putExtra("sourceType", 2);
        context.startActivity(intent);
    }

    @Override
    public void c() {
        PublishManager.INSTANCE.a().reset();
    }

    @Override
    public boolean d() {
        return PublishManager.INSTANCE.a().getUploading();
    }

    @Override
    public void e(Context context, String subjectId, String cover, String title, String description, int i10) {
        Subject subject;
        Intent intent;
        Intrinsics.h(context, "context");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(cover, "cover");
        Intrinsics.h(title, "title");
        Intrinsics.h(description, "description");
        Intent intent2 = new Intent(context, (Class<?>) FilmReviewActivity.class);
        intent2.setFlags(ASTNode.DEOP);
        intent2.putExtra("sourceType", 2);
        intent2.putExtra("sourceMode", i10);
        Subject subject2 = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
        if (subject2.getCover() == null) {
            intent = intent2;
            subject = subject2;
            subject.setCover(new Cover(0, 0, 0, cover, "", "", null, null, null, 384, null));
        } else {
            subject = subject2;
            intent = intent2;
            Cover cover2 = subject.getCover();
            if (cover2 != null) {
                cover2.setUrl(cover);
            }
        }
        subject.setSubjectId(subjectId);
        subject.setTitle(title);
        subject.setDescription(description);
        intent.putExtra("subject", subject);
        context.startActivity(intent);
    }

    @Override
    public boolean f() {
        return PublishManager.INSTANCE.a().getUploadFail();
    }

    @Override
    public void g(Context context, String subjectId, String cover, String title, String description, int i10) {
        Subject subject;
        Intent intent;
        Intrinsics.h(context, "context");
        Intrinsics.h(subjectId, "subjectId");
        Intrinsics.h(cover, "cover");
        Intrinsics.h(title, "title");
        Intrinsics.h(description, "description");
        Intent intent2 = new Intent(context, (Class<?>) FilmReviewActivity.class);
        intent2.setFlags(ASTNode.DEOP);
        intent2.putExtra("sourceType", 1);
        intent2.putExtra("sourceMode", i10);
        Subject subject2 = new Subject(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -1, 67108863, null);
        if (subject2.getCover() == null) {
            intent = intent2;
            subject = subject2;
            subject.setCover(new Cover(0, 0, 0, cover, "", "", null, null, null, 384, null));
        } else {
            subject = subject2;
            intent = intent2;
            Cover cover2 = subject.getCover();
            if (cover2 != null) {
                cover2.setUrl(cover);
            }
        }
        subject.setSubjectId(subjectId);
        subject.setTitle(title);
        subject.setDescription(description);
        intent.putExtra("subject", subject);
        context.startActivity(intent);
    }

    @Override
    public Intent h(Context context) {
        Intrinsics.h(context, "context");
        Intent intent = new Intent(context, (Class<?>) SelectImageActivity.class);
        intent.putExtra("key_type", 7);
        return intent;
    }
}

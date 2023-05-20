package com.itheima.service.impl;
import com.itheima.dao.SchoolMapper;
import com.itheima.domain.*;
import com.itheima.service.SchoolService;
import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;

import java.util.ArrayList;
import java.util.List;

@Service
public class SchoolServiceImpl implements SchoolService{
    @Autowired
    private SchoolMapper schoolMapper;
    public List<School> findAllSchool() {
        return schoolMapper.findAllSchool();
    }
    public List<Course> findAllCourse(){
        List<School> schoolList = findAllSchool();
        List<Course> courseList;
        List<Course> courseList1 = new ArrayList<>();
        List<String> courseNameList = new ArrayList<>();
        for(School a:schoolList){
            courseList = a.getCourseList();
            for (Course b:courseList){
                courseList1.add(b);
                courseNameList.add(b.getName());
            }
        }
        return courseList1;
    }
    public int getSchoolCount(){
        return schoolMapper.getSchoolCount();
    }
    public School findSchoolBySchoolId(int id){
        return schoolMapper.findSchoolBySchoolId(id);
    }
}

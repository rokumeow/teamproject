package Service.impl;

import Dao.inter.AcademicDao;
import Service.inter.AcademicService;
import entity.Academic;
import org.springframework.stereotype.Service;

@Service("AcademicService")
public class AcademicServiceImpl implements AcademicService {

    // Constructor
    public AcademicServiceImpl(){};

    private AcademicDao academicDao;
    // setter
    public void setAcademicDao(AcademicDao academicDao) {
        this.academicDao = academicDao;
    }

    // getter
    public AcademicDao getAcademicDao() {
        return academicDao;
    }

    // provide AcademicDao Service
    @Override
    public Academic login(Academic academic) {
        Academic temp = (Academic) academicDao.select(academic);
        return temp;
    }

}
